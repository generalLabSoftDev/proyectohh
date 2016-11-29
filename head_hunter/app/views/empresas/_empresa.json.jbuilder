json.extract! empresa, :id, :nombre, :rif, :contraseña, :correo, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)