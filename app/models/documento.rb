class Documento < ActiveRecord::Base

  mount_uploader :documento, DocumentoUploader
  attr_accessible :documento, :documento_cache, :descripcion

  belongs_to :inmueble
end