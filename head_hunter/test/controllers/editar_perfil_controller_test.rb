require 'test_helper'

class EditarPerfilControllerTest < ActionDispatch::IntegrationTest
  test "should get editarperfil" do
    get editar_perfil_editarperfil_url
    assert_response :success
  end

end
