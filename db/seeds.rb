# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

cities_with_monuments = [
  {
    name: 'Madrid',
    image_url: 'https://ejemplo.com/madrid.jpg',
    blur_data_url: 'data:image/webp;base64,UklGRm4AAABXRUJQVlA4IGIAAADwAQCdASoQAAsABUB8JbACdACp5VdU2yAA/UqnYkYnMCi5mAVkTz66nY0JKeEnksBbzWETDxgz4OP4mjD8eRKKCazZ4yLI4Nx0k4jtlbAgHlKlsw1Mx6rj9quiRuITlNLwAA==',
    monuments: [
      { 
        name: 'Palacio Real', 
        latitude: 40.417957, 
        longitude: -3.714302, 
        image_url: 'https://ejemplo.com/palacio_real.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRmwAAABXRUJQVlA4IGAAAADQAQCdASoQAAsABUB8JbACdACyU97KwAD9TDA/6129UzcpjNBtDEPCY+y2r0OpVi9pfHjREgDe3V1fLyFFIf/K/iBeWKCDorLSYO+BwzO0V4+g7RXWCxRPHXIzQ1zZYAA=', 
        monument_link: 'https://www.patrimonionacional.es/visita/palacio-real-de-madrid' 
      },
      { 
        name: 'Parque del Retiro', 
        latitude: 40.415260, 
        longitude: -3.684416, 
        image_url: 'https://ejemplo.com/parque_retiro.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRkwAAABXRUJQVlA4IEAAAAAQAgCdASoQAAwABUB8JbACdAD1kF+jsWcAAPHoh+pSXD0dQhVnKXFQuCYsMqYZneDFov2W6pDVaxSpshtYwAAA' 
      },
      { 
        name: 'Puerta del Sol', 
        latitude: 40.416832, 
        longitude: -3.702163, 
        image_url: 'https://ejemplo.com/puerta_sol.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRlAAAABXRUJQVlA4IEQAAADwAQCdASoQAAsABUB8JbACdAD0JP/3FgAA/u7hqR/e8Nc23JNk/P26evcl3901S6mBWnHsVnfhqYhqtBMCTGilVMAAAA==' 
      },
      { 
        name: 'Plaza Mayor', 
        latitude: 40.409332, 
        longitude: -3.704330, 
        image_url: 'https://ejemplo.com/plaza_mayor.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRkYAAABXRUJQVlA4IDoAAADwAQCdASoQAAwABUB8JbACdAC9PDUl8YAAhot4eCKAqaqdyeimwl109gFmhb5Ot+Z5hmzN9Ei0AAAA' 
      },
      { 
        name: 'Museo del Prado', 
        latitude: 40.413780, 
        longitude: -3.692127, 
        image_url: 'https://ejemplo.com/museo_prado.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRkwAAABXRUJQVlA4IEAAAACwAQCdASoQAAsABUB8JbACdACpQhQAAPdM2oxB1J159tgzt5sTTgnGL3LATc0esRemE4njUiS8QhrWEp/cHDQA', 
        monument_link: 'https://www.museodelprado.es/' 
      },
      { 
        name: 'Gran Vía', 
        latitude: 40.420345, 
        longitude: -3.705774, 
        image_url: 'https://ejemplo.com/gran_via.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRlQAAABXRUJQVlA4IEgAAACQAQCdASoQAAsABUB8JbACdABUyAAAyqO6UPWySPi42bzg9/G9EbzVDcPgr4g8s71938msO9inAkUEk5zqt/PDot807j9GSAA=' 
      }
    ]
  },
  {
    name: 'Barcelona',
    image_url: 'https://ejemplo.com/barcelona.jpg',
    blur_data_url: 'data:image/webp;base64,UklGRmoAAABXRUJQVlA4IF4AAAAwAgCdASoQAAsABUB8JbACdDiAATsc258jAAD6k9To9/jzTgUiiJaacTHTIydGmzXq94VD96IENpdm6rw82jnRNXp0Eidk4L55fEjW7Au/dzIlMgYiR9y0i9jQAAAA',
    monuments: [
      { 
        name: 'Sagrada Familia', 
        latitude: 41.403629, 
        longitude: 2.174356, 
        image_url: 'https://ejemplo.com/sagrada_familia.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRmoAAABXRUJQVlA4IF4AAAAwAgCdASoQAAsABUB8JbACdDiAATsc258jAAD6k9To9/jzTgUiiJaacTHTIydGmzXq94VD96IENpdm6rw82jnRNXp0Eidk4L55fEjW7Au/dzIlMgYiR9y0i9jQAAAA', 
        monument_link: 'https://sagradafamilia.org/' 
      },
      { 
        name: 'Catedral', 
        latitude: 41.384087, 
        longitude: 2.176465, 
        image_url: 'https://ejemplo.com/catedral_barcelona.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRloAAABXRUJQVlA4IE4AAADwAQCdASoQAA0ABUB8JbACdAEO9KKYgAAA/s1Cs8Xu8j8e98Zv5Zq/MmLfdbkyw+2MXb9C/1213boeMfHB0NyVcTb9sLc0k0jlIAITEAA=', 
        monument_link: 'https://catedralbcn.org/es/' 
      },
      { 
        name: 'Liceu', 
        latitude: 41.380897, 
        longitude: 2.173503, 
        image_url: 'https://ejemplo.com/liceu.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRlAAAABXRUJQVlA4IEQAAACwAQCdASoQAAkABUB8JbACdAC2mLHkAP6768fb5S8Kl4bFSHNj367GMMrhHmWBPcbzhzfzqvvoFaGRzO1aRQhXMDQAAA==', 
        monument_link: 'https://www.liceubarcelona.cat/' 
      },
      { 
        name: 'Parc Güell', 
        latitude: 41.408165, 
        longitude: 2.151666, 
        image_url: 'https://ejemplo.com/parc_guell.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRmAAAABXRUJQVlA4IFQAAADQAQCdASoQAAsABUB8JaACdAEU1aDKYAD+xgMG6b/1NAO/qQNUYA5Fr1pwyYeJqsl/KX2xTmVd/Ky9IkuAfgSATKV4uIdkHpusWIKTKeDPGHsAAAA=', 
        monument_link: 'https://parkguell.barcelona/es' 
      },
      { 
        name: 'Casa Batllo', 
        latitude: 41.388331, 
        longitude: 2.158999, 
        image_url: 'https://ejemplo.com/batllo.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRj4AAABXRUJQVlA4IDIAAACQAQCdASoQAAkABUB8JYwAAivkcoAA/t6+0+TuPEm3obJzk64NSNRHStTneEC9cAoAAA==', 
        monument_link: 'https://www.casabatllo.es/' 
      },
      { 
        name: 'Parc Montjuïc', 
        latitude: 41.363508, 
        longitude: 2.158389, 
        image_url: 'https://ejemplo.com/parc_montjuic.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRkoAAABXRUJQVlA4ID4AAAAwAgCdASoQAAsABUB8JbACdAEWP6UT58c0AAD+0G3Z1qeQ1csd03rwftOW6Z4WVkN/E5maZ/WvOGjxSH8AAA==', 
        monument_link: 'https://www.barcelona.cat/es/que-hacer-en-bcn/parque-montjuic' 
      }
    ]
  },
  {
    name: 'Sevilla',
    image_url: 'https://ejemplo.com/sevilla.jpg',
    blur_data_url: 'data:image/webp;base64,UklGRlIAAABXRUJQVlA4IEYAAADwAQCdASoQAAsABUB8JbACdIExEqgzpQAA/rXu7Uxji6VE9t4XCsEVmF1ibEmbURVbv3RyA098BBSuo49txwiiUqLo9gAA',
    monuments: [
      { 
        name: 'Giralda', 
        latitude: 37.385048, 
        longitude: -5.988770, 
        image_url: 'https://ejemplo.com/giralda.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRkgAAABXRUJQVlA4IDwAAAAQAgCdASoQAAwABUB8JbACdAEPCG5DV8FAAP7tRwCChP9k3Eu35DQXsld6DW2ZhdyOwUDyuh7wroAAAAA=', 
        monument_link: 'https://www.catedraldesevilla.es/la-catedral/edificio/la-giralda/'
      },
      { 
        name: 'Alcázar', 
        latitude: 37.383665, 
        longitude: -5.988162, 
        image_url: 'https://ejemplo.com/alcazar.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRlQAAABXRUJQVlA4IEgAAACwAQCdASoQAAsABUB8JaACdADViegAAP7kQd4vFVvsUynOgt6wD3rOkNwbhTbS/FHn44Qzwyw1mXRU7KWKRM1wMZZMDwqigAA=', 
        monument_link: 'https://alcazarsevilla.org/' 
      },
      { 
        name: 'Plaza de España', 
        latitude: 37.382830, 
        longitude: -5.973170, 
        image_url: 'https://ejemplo.com/plaza_espana.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRlIAAABXRUJQVlA4IEYAAADwAQCdASoQAAsABUB8JbACdIExEqgzpQAA/rXu7Uxji6VE9t4XCsEVmF1ibEmbURVbv3RyA098BBSuo49txwiiUqLo9gAA' 
      },
      { 
        name: 'Barrio de Triana', 
        latitude: 37.383480, 
        longitude: -6.003110, 
        image_url: 'https://ejemplo.com/triana.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRk4AAABXRUJQVlA4IEIAAAAwAgCdASoQAAsABUB8JbACdAEPAfIseRqp+AD+wCDxRV9iwECbbbUe47+6+LE21S2mZG5DwNoSYUhJSPm3wGyXgAA=' 
      }
    ]
  },
  {
    name: 'Valencia',
    image_url: 'https://ejemplo.com/Valencia.jpg',
    blur_data_url: 'data:image/webp;base64,UklGRmIAAABXRUJQVlA4IFYAAABwAgCdASoQAAsABUB8JbACdGuAAtCKitIFfUwAAPYsVeP9/qYj+ZAiIHwe6wvcYkytDRiMbJQzaNgRZof4OIE9KIfWmmPjfzn31IzmQxjl+nQY0CgAAA==',
    monuments: [
      { 
        name: 'Ciudad de las Artes', 
        latitude: 39.452714, 
        longitude: -0.350210, 
        image_url: 'https://ejemplo.com/ciudad_de_las_artes.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRmIAAABXRUJQVlA4IFYAAABwAgCdASoQAAsABUB8JbACdGuAAtCKitIFfUwAAPYsVeP9/qYj+ZAiIHwe6wvcYkytDRiMbJQzaNgRZof4OIE9KIfWmmPjfzn31IzmQxjl+nQY0CgAAA==', 
        monument_link: 'https://tickets.cac.es/internetCAC/home.do' 
      },
      { 
        name: 'Lonja de la Seda', 
        latitude: 39.474444, 
        longitude: -0.378333, 
        image_url: 'https://ejemplo.com/lonja_seda.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRkgAAABXRUJQVlA4IDwAAACwAQCdASoQAAoABUB8JYgCdADyf26IAP7acdUaTtvKYLOLEmcIdrNDTGs2aJPBqkPBoiqIwA1lDyAsAAA=' 
      },
      { 
        name: 'Torres de Serranos', 
        latitude: 39.479300, 
        longitude: -0.375933, 
        image_url: 'https://ejemplo.com/torres_serranos.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRloAAABXRUJQVlA4IE4AAADwAQCdASoQAA0ABUB8JbACdH8AFV6x9AAA96J+jBt1h5aW8lG3raSxQyXyoVxXbN20upEq2Z+Kk+S8ouUpgr42isU42uXau2MigKf2AAA=' 
      },
      { 
        name: 'Torres de Quart', 
        latitude: 39.475686, 
        longitude: -0.383975, 
        image_url: 'https://ejemplo.com/torres_quart.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRlgAAABXRUJQVlA4IEwAAADwAQCdASoQAAsABUB8JQBdgCPNTZrxMtAA/sns9T82F+NEpT2cULdY/HUPHPX53gmnWosomlJwx8usLQzJc38PpexffTXg8tR6gAAA' 
      },
      { 
        name: 'El Miguelete', 
        latitude: 39.474969, 
        longitude: -0.375497, 
        image_url: 'https://ejemplo.com/miguelete.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRkIAAABXRUJQVlA4IDYAAADQAQCdASoQAAsABUB8JagCdADwgEVQkAD6bzIEdVefgn2f/piqRl04595hUolxzEosqTwAAAA=', 
        monument_link: 'https://catedraldevalencia.es/el-miguelete/' 
      },
      { 
        name: 'Mercado Central', 
        latitude: 39.473503, 
        longitude: -0.378942, 
        image_url: 'https://ejemplo.com/mercado_central.jpg', 
        blur_data_url: 'data:image/webp;base64,UklGRlYAAABXRUJQVlA4IEoAAACwAQCdASoQAAoABUB8JagCdABsUkgAAP7N8RoJE2GYJHTQlYaIj03IP8qNA2KakcYe4Pdf9I/UoUwk1t6VWJ1b7US7Fb+82MAAAA==', 
        monument_link: 'https://www.mercadocentralvalencia.es/' 
      }
    ]
  }
]

cities_with_monuments.each do |city_data|
  base_url = ENV.fetch("IMAGE_BASE_URL", "https://ejemplo.com")
  city_image_url = city_data[:image_url].gsub("https://ejemplo.com", base_url)

  city = City.create!(
    name: city_data[:name],
    image_url: city_image_url,
    blur_data_url: city_data[:blur_data_url]
  )

  city_data[:monuments].each do |monument_data|
    monument_image_url = monument_data[:image_url].gsub("https://ejemplo.com", base_url)

    Monument.create!(
      name: monument_data[:name],
      city: city,
      latitude: monument_data[:latitude],
      longitude: monument_data[:longitude],
      image_url: monument_image_url,
      blur_data_url: monument_data[:blur_data_url],
      monument_link: monument_data[:monument_link] # Si no existe, se asignará nil
    )
  end
end
