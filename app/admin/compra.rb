ActiveAdmin.register Compra do
actions :index, :show
permit_params :pago_id, :cliente_id

index do
    selectable_column
    column :id
    column :pago_id
    column :cliente_id
    default_actions
end


end
