package com.example.proyectoingweb.servlets.model.daos;

import com.example.proyectoingweb.servlets.model.beans.Incidencias;
import com.example.proyectoingweb.servlets.model.beans.Usuarios;
import com.example.proyectoingweb.servlets.model.beans.ZonaPucp;

import java.sql.*;
import java.util.ArrayList;

public class DaoIncidencias extends DaoBase{
    public ArrayList<Incidencias> obtenerlistaIncidencias() {
        ArrayList<Incidencias> listaIncidencias = new ArrayList<>();
        String sql = "SELECT * FROM incidencias ORDER BY idIncidencia LIMIT 0,16    ";

        Usuarios seguridad;
        Usuarios usuario;
        DaoUsuarios daoUsuarios = new DaoUsuarios();
        DaoZonaPucp daoZonaPucp = new DaoZonaPucp();

        try (Connection connection = this.getConnection();
             Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Incidencias incidencias = new Incidencias();

                incidencias.setIdIncidencia(rs.getInt(1));
                usuario = daoUsuarios.buscarPorId(rs.getString(2));
                incidencias.setUsuario(usuario);
                seguridad = daoUsuarios.buscarPorId(rs.getString(3));
                incidencias.setSeguridad(seguridad);
                incidencias.setNombre(rs.getString(4));
                incidencias.setDescripcion(rs.getString(5));
                ZonaPucp zonaPucp = daoZonaPucp.obtenerXId(""+rs.getInt(6)+"");
                incidencias.setZonaPucp(zonaPucp);
                incidencias.setTipo(rs.getString(7));
                incidencias.setUbicacion(rs.getString(8));
                incidencias.setFoto(rs.getString(9));
                incidencias.setDestacado(rs.getInt(10));
                incidencias.setDatetime(rs.getString(11));
                incidencias.setAnonimo(rs.getInt(12));
                incidencias.setUrgencia(rs.getString(13));
                incidencias.setEstadoIncidencia(rs.getString(14));
                incidencias.setNumEstrellas(rs.getInt(15));

                listaIncidencias.add(incidencias);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaIncidencias;
    }

    public ArrayList<Incidencias> paginarIncidencias(int i){
        ArrayList<Incidencias> listaIncidencias = new ArrayList<>();
        int inicio=16*(i-1);

        Usuarios seguridad;
        Usuarios usuario;
        DaoUsuarios daoUsuarios = new DaoUsuarios();
        DaoZonaPucp daoZonaPucp = new DaoZonaPucp();
        String sql = "SELECT * FROM incidencias ORDER BY idIncidencia LIMIT "+inicio+","+"16";

        try(Connection connection = this.getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql)){

            while(rs.next()){
                Incidencias incidencias = new Incidencias();

                incidencias.setIdIncidencia(rs.getInt(1));
                usuario = daoUsuarios.buscarPorId(rs.getString(2));
                incidencias.setUsuario(usuario);
                seguridad = daoUsuarios.buscarPorId(rs.getString(3));
                incidencias.setSeguridad(seguridad);
                incidencias.setNombre(rs.getString(4));
                incidencias.setDescripcion(rs.getString(5));
                ZonaPucp zonaPucp = daoZonaPucp.obtenerXId(""+rs.getInt(6)+"");
                incidencias.setZonaPucp(zonaPucp);
                incidencias.setTipo(rs.getString(7));
                incidencias.setUbicacion(rs.getString(8));
                incidencias.setFoto(rs.getString(9));
                incidencias.setDestacado(rs.getInt(10));
                incidencias.setDatetime(rs.getString(11));
                incidencias.setAnonimo(rs.getInt(12));
                incidencias.setUrgencia(rs.getString(13));
                incidencias.setEstadoIncidencia(rs.getString(14));
                incidencias.setNumEstrellas(rs.getInt(15));

                listaIncidencias.add(incidencias);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaIncidencias;
    }

    public ArrayList<Incidencias> obtenerlistaIncidenciasCompleta() {
        ArrayList<Incidencias> listaIncidencias = new ArrayList<>();
        String sql = "SELECT * FROM incidencias ORDER BY idIncidencia";

        Usuarios seguridad;
        Usuarios usuario;
        DaoUsuarios daoUsuarios = new DaoUsuarios();
        DaoZonaPucp daoZonaPucp = new DaoZonaPucp();

        try (Connection connection = this.getConnection();
             Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Incidencias incidencias = new Incidencias();

                incidencias.setIdIncidencia(rs.getInt(1));
                usuario = daoUsuarios.buscarPorId(rs.getString(2));
                incidencias.setUsuario(usuario);
                seguridad = daoUsuarios.buscarPorId(rs.getString(3));
                incidencias.setSeguridad(seguridad);
                incidencias.setNombre(rs.getString(4));
                incidencias.setDescripcion(rs.getString(5));
                ZonaPucp zonaPucp = daoZonaPucp.obtenerXId(""+rs.getInt(6)+"");
                incidencias.setZonaPucp(zonaPucp);
                incidencias.setTipo(rs.getString(7));
                incidencias.setUbicacion(rs.getString(8));
                incidencias.setFoto(rs.getString(9));
                incidencias.setDestacado(rs.getInt(10));
                incidencias.setDatetime(rs.getString(11));
                incidencias.setAnonimo(rs.getInt(12));
                incidencias.setUrgencia(rs.getString(13));
                incidencias.setEstadoIncidencia(rs.getString(14));
                incidencias.setNumEstrellas(rs.getInt(15));

                listaIncidencias.add(incidencias);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaIncidencias;
    }
/*
    public ArrayList<Incidencias> obtenerlistaIncidenciasDestacadas() {
        ArrayList<Incidencias> listaIncidenciasDestacadas = new ArrayList<>();
        DaoUsuarios daoUsuarios = new DaoUsuarios();
        DaoZonaPucp daoZonaPucp = new DaoZonaPucp();

        String sql = "SELECT incidencias.* , concat(users.nombres,' ',users.apellidos) as `Nombre de usuario` FROM mydb.incidencias incidencias , mydb.usuarios users where incidencias.destacado = 1 and  incidencias.idUsuario = users.idUsuario;\n";

        try (Connection connection = this.getConnection();
             Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Incidencias incidencias = new Incidencias();

                incidencias.setIdIncidencia(rs.getInt(1));
                incidencias.setUsuario(daoUsuarios.buscarPorId(""+rs.getInt(2)+""));
                incidencias.setSeguridad(daoUsuarios.buscarPorId(rs.getString(3)));
                incidencias.setNombre(rs.getString(4));
                incidencias.setDescripcion(rs.getString(5));
                ZonaPucp zonaPucp = daoZonaPucp.obtenerXId(""+rs.getInt(6)+"");
                incidencias.setZonaPucp(zonaPucp);
                incidencias.setTipo(rs.getString(7));
                incidencias.setUbicacion(rs.getString(8));
                incidencias.setFoto(rs.getString(9));
                incidencias.setDestacado(rs.getInt(10));
                incidencias.setDatetime(rs.getString(11));
                incidencias.setAnonimo(rs.getInt(12));
                incidencias.setUrgencia(rs.getString(13));
                incidencias.setEstadoIncidencia(rs.getString(14));
                incidencias.setNumEstrellas(rs.getInt(15));
                incidencias.setNombreUsuarioQueDestaco(rs.getString(16));



                listaIncidenciasDestacadas.add(incidencias);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaIncidenciasDestacadas;
    }
    */
    public void guardarIncidencias(Incidencias incidencias){

        String sql = "INSERT INTO mydb.incidencias (idUsuario,nombre,descripcion,destacado,tipo,urgencia,idzonaPucp,fechaHora,anonimo,estadoIncidencia) VALUES (?,?,?,?,?,?,?,?,?,?)";

        try(Connection connection = this.getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setString(1,String.valueOf(incidencias.getUsuario().getIdUsuarios()));
            pstmt.setString(2,incidencias.getNombre());
            pstmt.setString(3,incidencias.getDescripcion());
            pstmt.setString(4,"0");
            pstmt.setString(5,incidencias.getTipo());
            pstmt.setString(6,incidencias.getUrgencia());
            pstmt.setString(7,String.valueOf(incidencias.getZonaPucp().getIdZonaPucp()));
            pstmt.setString(8,incidencias.getDatetime());
            pstmt.setString(9,String.valueOf(incidencias.getAnonimo()));
            pstmt.setString(10,"Registrado");

            pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public Incidencias buscarPorId(String IDincidencias){

        Incidencias incidencias = null;
        Usuarios usuarios = null;
        Usuarios seguridad = null;

        DaoUsuarios daoUsuarios = new DaoUsuarios();

        String sql = "SELECT * FROM incidencias where idIncidencia = ?";
        DaoZonaPucp daoZonaPucp = new DaoZonaPucp();
        try(Connection connection = this.getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setString(1, IDincidencias);
            try (ResultSet rs = pstmt.executeQuery()){
                if (rs.next()){
                    incidencias = new Incidencias();
                    incidencias.setIdIncidencia(Integer.parseInt(IDincidencias));
                    usuarios = daoUsuarios.buscarPorId(rs.getString(2));
                    incidencias.setUsuario(usuarios);
                    seguridad = daoUsuarios.buscarPorId(rs.getString(3));
                    incidencias.setSeguridad(seguridad);
                    incidencias.setNombre(rs.getString(4));
                    incidencias.setDescripcion(rs.getString(5));
                    ZonaPucp zonaPucp = daoZonaPucp.obtenerXId(""+rs.getInt(6)+"");
                    incidencias.setZonaPucp(zonaPucp);
                    incidencias.setTipo(rs.getString(7));
                    incidencias.setUbicacion(rs.getString(8));
                    incidencias.setFoto(rs.getString(9));
                    incidencias.setDestacado(rs.getInt(10));
                    incidencias.setDatetime(rs.getString(11));
                    incidencias.setAnonimo(rs.getInt(12));
                    incidencias.setUrgencia(rs.getString(13));
                    incidencias.setEstadoIncidencia(rs.getString(14));
                    incidencias.setNumEstrellas(rs.getInt(15));
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return incidencias;
    }


}
