require 'test_helper'

class AspirantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aspirante = aspirantes(:one)
  end

  test "should get index" do
    get aspirantes_url
    assert_response :success
  end

  test "should get new" do
    get new_aspirante_url
    assert_response :success
  end

  test "should create aspirante" do
    assert_difference('Aspirante.count') do
      post aspirantes_url, params: { aspirante: { apellidos: @aspirante.apellidos, area_universidad: @aspirante.area_universidad, bachillerato: @aspirante.bachillerato, cedula: @aspirante.cedula, celular: @aspirante.celular, contraseña: @aspirante.contraseña, correo: @aspirante.correo, discapacidad: @aspirante.discapacidad, estado: @aspirante.estado, estudios_universitarios: @aspirante.estudios_universitarios, fecha: @aspirante.fecha, institucion: @aspirante.institucion, institucion_otros_estudios: @aspirante.institucion_otros_estudios, intereses: @aspirante.intereses, mencion: @aspirante.mencion, municipio: @aspirante.municipio, nombres: @aspirante.nombres, sexo: @aspirante.sexo, telefono: @aspirante.telefono } }
    end

    assert_redirected_to aspirante_url(Aspirante.last)
  end

  test "should show aspirante" do
    get aspirante_url(@aspirante)
    assert_response :success
  end

  test "should get edit" do
    get edit_aspirante_url(@aspirante)
    assert_response :success
  end

  test "should update aspirante" do
    patch aspirante_url(@aspirante), params: { aspirante: { apellidos: @aspirante.apellidos, area_universidad: @aspirante.area_universidad, bachillerato: @aspirante.bachillerato, cedula: @aspirante.cedula, celular: @aspirante.celular, contraseña: @aspirante.contraseña, correo: @aspirante.correo, discapacidad: @aspirante.discapacidad, estado: @aspirante.estado, estudios_universitarios: @aspirante.estudios_universitarios, fecha: @aspirante.fecha, institucion: @aspirante.institucion, institucion_otros_estudios: @aspirante.institucion_otros_estudios, intereses: @aspirante.intereses, mencion: @aspirante.mencion, municipio: @aspirante.municipio, nombres: @aspirante.nombres, sexo: @aspirante.sexo, telefono: @aspirante.telefono } }
    assert_redirected_to aspirante_url(@aspirante)
  end

  test "should destroy aspirante" do
    assert_difference('Aspirante.count', -1) do
      delete aspirante_url(@aspirante)
    end

    assert_redirected_to aspirantes_url
  end
end
