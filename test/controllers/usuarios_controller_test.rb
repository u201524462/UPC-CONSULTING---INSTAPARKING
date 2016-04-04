require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { Apellidos_usuario: @usuario.Apellidos_usuario, Codigo_Usuario: @usuario.Codigo_Usuario, Correo_usuario: @usuario.Correo_usuario, Estado_usuario: @usuario.Estado_usuario, Fecha_Actualizacion_usuario: @usuario.Fecha_Actualizacion_usuario, Fecha_Creacion_usuario: @usuario.Fecha_Creacion_usuario, Nickname: @usuario.Nickname, Nombres_usuario: @usuario.Nombres_usuario, Password: @usuario.Password, Telefono_usuario: @usuario.Telefono_usuario, Tipo_usuario: @usuario.Tipo_usuario }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    patch :update, id: @usuario, usuario: { Apellidos_usuario: @usuario.Apellidos_usuario, Codigo_Usuario: @usuario.Codigo_Usuario, Correo_usuario: @usuario.Correo_usuario, Estado_usuario: @usuario.Estado_usuario, Fecha_Actualizacion_usuario: @usuario.Fecha_Actualizacion_usuario, Fecha_Creacion_usuario: @usuario.Fecha_Creacion_usuario, Nickname: @usuario.Nickname, Nombres_usuario: @usuario.Nombres_usuario, Password: @usuario.Password, Telefono_usuario: @usuario.Telefono_usuario, Tipo_usuario: @usuario.Tipo_usuario }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_path
  end
end
