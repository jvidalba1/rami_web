module InmueblesHelper

  def documents_types
    %w(imagen_inmueble_1 imagen_inmueble_2 imagen_mapa imagen_planos imagen_adicional)
  end

  def trato_destino_reporte
    [
      ["Sr.",       1],
      ["Sra.",      2],
      ["Sres.",     3],
      ["Srta.",     4],
      ["Doctor",    5],
      ["Ingeniero", 6]
    ]
  end

  def select_clase_inmueble
    [
        ["Bodega",  1],
        ["Local",   2],
        ["Oficina", 3],
        ["Casa",    4],
        ["Lote",    5]
    ]
  end

  def select_tipo_negocio
    [
        ["Arriendo",  1],
        ["Compra",    2]
    ]
  end

  def select_status
    [
        ["Activo",    1],
        ["Inactivo",  0]
    ]
  end

  def get_trato_destino_reporte(code)
    trato_destino_reporte.each do |trato, id|
      return trato if id.eql? code
    end
  end

  def get_status(code)
    select_status.each do |status, id|
      return status if id.eql? code
    end
  end

  def get_clase_inmueble(cod)
    select_clase_inmueble.each do |desc, id|
      return desc if id.eql? cod
    end
  end

  def get_tipo_negocio(cod)
    select_tipo_negocio.each do |desc, id|
      return desc if id.eql? cod
    end
  end

end
