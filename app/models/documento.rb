# == Schema Information
#
# Table name: documentos
#
#  id          :integer          not null, primary key
#  descripcion :string(255)
#  documento   :string(255)
#  inmueble_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Documento < ActiveRecord::Base

  mount_uploader :documento, DocumentoUploader
  attr_accessible :documento, :documento_cache, :descripcion

  belongs_to :inmueble
end
