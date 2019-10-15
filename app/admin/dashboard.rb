ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do




    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

       columns do
         panel "Información General" do
          h2 b "Cantidad de usuarios: #{User.all.count}"
          h2 b "Cantidad de empresas: #{Company.all.count}"
          h2 b "Cantidad de Reclamos: #{Complaint.all.count}"
         end
       end
     end
  end # content
