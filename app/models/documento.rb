class Documento < ActiveRecord::Base

  # == Table definitions

  mount_uploader :documento, DocumentoUploader
  attr_accessible :documento, :documento_cache, :descripcion

  belongs_to :inmueble

  # == Column validations

  # == Methods
end
