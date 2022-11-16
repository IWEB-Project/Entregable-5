package com.example.proyectoingweb.servlets.model.daos;

import com.example.proyectoingweb.servlets.model.beans.Usuarios;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.*;
import java.util.ArrayList;

public class DaoUsuarios extends DaoBase{

    public ArrayList<Usuarios> obtenerlistaUsuarios(){
        ArrayList<Usuarios> listaUsuarios = new ArrayList<>();

        String sql = "SELECT * FROM usuarios ORDER BY idUsuario LIMIT 0,15";

        try(Connection connection = this.getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql)){

            while(rs.next()){
                Usuarios usuarios = new Usuarios();

                usuarios.setIdUsuarios(rs.getInt(1));
                usuarios.setNombres(rs.getString(2));
                usuarios.setApellidos(rs.getString(3));
                usuarios.setDni(rs.getString(4));
                usuarios.setCelular(rs.getString(5));
                usuarios.setCodigoPucp(rs.getString(6));
                usuarios.setCorreoPucp(rs.getString(7));
                usuarios.setCategorias(rs.getString(8));
                usuarios.setRol(rs.getString(9));

                listaUsuarios.add(usuarios);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaUsuarios;
    }

    public ArrayList<Usuarios> obtenerlistaUsuariosCompleta(){
        ArrayList<Usuarios> listaUsuarios = new ArrayList<>();

        String sql = "SELECT * FROM mydb.usuarios ORDER BY idUsuario";

        try(Connection connection = this.getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql)){

            while(rs.next()){
                Usuarios usuarios = new Usuarios();

                usuarios.setIdUsuarios(rs.getInt(1));
                usuarios.setNombres(rs.getString(2));
                usuarios.setApellidos(rs.getString(3));
                usuarios.setDni(rs.getString(4));
                usuarios.setCelular(rs.getString(5));
                usuarios.setCodigoPucp(rs.getString(6));
                usuarios.setCorreoPucp(rs.getString(7));
                usuarios.setCategorias(rs.getString(8));
                usuarios.setRol(rs.getString(9));

                listaUsuarios.add(usuarios);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaUsuarios;
    }

    public Usuarios buscarPorId(String idUsuario){

        String sql = "SELECT * FROM usuarios WHERE idUsuario = ?";
        Usuarios usuarios = null;

        try(Connection conn = this.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, idUsuario);

            try (ResultSet rs = pstmt.executeQuery()){
                if (rs.next()){
                    usuarios = new Usuarios();

                    usuarios.setIdUsuarios(rs.getInt(1));
                    usuarios.setNombres(rs.getString(2));
                    usuarios.setApellidos(rs.getString(3));
                    usuarios.setDni(rs.getString(4));
                    usuarios.setCelular(rs.getString(5));
                    usuarios.setCodigoPucp(rs.getString(6));
                    usuarios.setCorreoPucp(rs.getString(7));
                    usuarios.setCategorias(rs.getString(8));
                    usuarios.setRol(rs.getString(9));
                    usuarios.setFotoPerfil(rs.getString(11));
                }
            }

        }
        catch (SQLException e){
            throw new RuntimeException();
        }

        return usuarios;
    }

    public String obtenerRol(String codigo, String passw, String correo){

        String sql = "SELECT * FROM usuarios WHERE codigoPucp = ? and contrasena = ? and correoPucp = ?";
        String rol = null;
        try(Connection conn = this.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, codigo);
            pstmt.setString(2, passw);
            pstmt.setString(3, correo);

            try (ResultSet rs = pstmt.executeQuery()){
                if (rs.next()){
                    rol = rs.getString(9);
                }
            }
        }
        catch (SQLException e){
            throw new RuntimeException();
        }
        return rol;
    }

    public Usuarios validarUsuarioPassword(String codigo, String passw, String correo ){
        Usuarios usuario = null;
        String sql = "SELECT * FROM usuarios WHERE codigoPucp = ? and contrasena = ? and correoPucp = ?";

        try(Connection conn = this.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, codigo);
            pstmt.setString(2, passw);
            pstmt.setString(3, correo);

            try (ResultSet rs = pstmt.executeQuery()){
                if (rs.next()){
                    int usuarioId = rs.getInt(1);
                    usuario = this.buscarPorId(String.valueOf(usuarioId));
                }
            }
        }
        catch (SQLException e){
            throw new RuntimeException();
        }
        return usuario;
    }

    public void guardarUsuario(Usuarios usuarios){
        String sql = "INSERT INTO usuarios (nombres, apellidos, dni, celular, codigoPucp, correoPucp, categoria, rol, fotoPerfil) VALUES (?,?,?,?,?,?,?,?,?)";

        try(Connection connection = this.getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setString(1,usuarios.getNombres());
            pstmt.setString(2,usuarios.getApellidos());
            pstmt.setString(3,usuarios.getDni());
            pstmt.setString(4,usuarios.getCelular());
            pstmt.setString(5,usuarios.getCodigoPucp());
            pstmt.setString(6,usuarios.getCorreoPucp());
            pstmt.setString(7,usuarios.getCategorias());
            pstmt.setString(8,usuarios.getRol());
            pstmt.setString(9,"perfilDefault.png");
            //pstmt.setNull(9, Types.VARCHAR);

            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void actualizarUsuario(Usuarios usuarios){
        String sql = "UPDATE usuarios SET nombres = ?, apellidos = ?, dni = ?, celular = ?, codigoPucp = ?, correoPucp = ?, categoria = ?, rol = ? WHERE idUsuario = ?";

        try(Connection connection = this.getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setString(1,usuarios.getNombres());
            pstmt.setString(2,usuarios.getApellidos());
            pstmt.setString(3,usuarios.getDni());
            pstmt.setString(4,usuarios.getCelular());
            pstmt.setString(5,usuarios.getCodigoPucp());
            pstmt.setString(6,usuarios.getCorreoPucp());
            pstmt.setString(7,usuarios.getCategorias());
            pstmt.setString(8,usuarios.getRol());
            pstmt.setInt(9, usuarios.getIdUsuarios());

            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    public void borrarUsuario(String idUsuario){
        String sql = "DELETE from usuarios WHERE idUsuario = ?";

        try(Connection connection = this.getConnection();
            PreparedStatement pstmt=connection.prepareStatement(sql))
        {

            pstmt.setString(1,idUsuario);
            pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public ArrayList<Usuarios> buscarUsuarios(String nombreuser){
        ArrayList<Usuarios> listaUsuarios = new ArrayList<>();
        String sql = "SELECT * FROM mydb.usuarios WHERE lower(nombres) like ? or lower(apellidos) like ? or dni like ? or codigoPucp like ?";

        try(Connection conn = this.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, "%"+nombreuser+"%");
            pstmt.setString(2, "%"+nombreuser+"%");
            pstmt.setString(3, "%"+nombreuser+"%");
            pstmt.setString(4, "%"+nombreuser+"%");


            try (ResultSet rs = pstmt.executeQuery()){
                while (rs.next()){
                    Usuarios usuario = new Usuarios();

                    usuario.setIdUsuarios(rs.getInt(1));
                    usuario.setNombres(rs.getString(2));
                    usuario.setApellidos(rs.getString(3));
                    usuario.setDni(rs.getString(4));
                    usuario.setCelular(rs.getString(5));
                    usuario.setCodigoPucp(rs.getString(6));
                    usuario.setCorreoPucp(rs.getString(7));
                    usuario.setCategorias(rs.getString(8));
                    usuario.setRol(rs.getString(9));

                    listaUsuarios.add(usuario);

                }
            }

        }catch (SQLException e){
            throw new RuntimeException();
        }

        return listaUsuarios;
    }

    public ArrayList<Usuarios> paginarUsuarios(int i){
        ArrayList<Usuarios> listaUsuarios = new ArrayList<>();
        int inicio=15*(i-1);

        String sql = "SELECT * FROM mydb.usuarios ORDER BY idUsuario LIMIT "+inicio+","+"15";

        try(Connection connection = this.getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql)){

            while(rs.next()){
                Usuarios usuarios = new Usuarios();

                usuarios.setIdUsuarios(rs.getInt(1));
                usuarios.setNombres(rs.getString(2));
                usuarios.setApellidos(rs.getString(3));
                usuarios.setDni(rs.getString(4));
                usuarios.setCelular(rs.getString(5));
                usuarios.setCodigoPucp(rs.getString(6));
                usuarios.setCorreoPucp(rs.getString(7));
                usuarios.setCategorias(rs.getString(8));
                usuarios.setRol(rs.getString(9));

                listaUsuarios.add(usuarios);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaUsuarios;
    }


}
