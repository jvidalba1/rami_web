module InmueblesHelper

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
