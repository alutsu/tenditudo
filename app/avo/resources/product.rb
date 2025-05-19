class Avo::Resources::Product < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  self.default_view_type = :grid

  def fields
    field :id, as: :id
    field :name, as: :text
    field :description, as: :textarea
    field :price, as: :number
    field :visible, as: :boolean
    field :category, as: :belongs_to
    field :user, as: :belongs_to
    field :image, as: :file, is_image: true
  end

  self.grid_view = {
    card: -> do
      {
        cover_url:
          if record.image.attached?
            main_app.url_for(record.image)
          end,
        title: record.name,
        body: record.description.truncate(50)
      }
    end
  }
end
