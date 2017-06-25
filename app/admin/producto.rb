ActiveAdmin.register Producto do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :marca,:nombre

filter :clasificacion, as: :select, collection: proc { Clasificacion.nombre }

end
