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
end
