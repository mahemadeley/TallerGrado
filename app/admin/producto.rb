ActiveAdmin.register Producto do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :marca_id, :nombre, :clasificacion_id, :precio, :stock, :vencimiento, :produccion

filter :marca
filter :nombre 
filter :clasificacion
filter :precio
filter :stock 
filter :vencimiento 
filter :produccion

end
