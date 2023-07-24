require 'rubyXL'
require 'rubyXL/convenience_methods/cell'
require 'rubyXL/convenience_methods/color'
require 'rubyXL/convenience_methods/font'
require 'rubyXL/convenience_methods/workbook'
require 'rubyXL/convenience_methods/worksheet'

class OrdersController < ApplicationController

  def index
    # Extraire les données du fichier Excel
    workbook = RubyXL::Parser.parse('lib/assets/Orders.xlsx')
    # Initialiser les variables
    @orders = []
    @packages = []
    @items = []
    order = []
    # Parcourir "Order 1" du fichier Excel
    order1 = workbook[0]

    # Parcourir les lignes de "Order 1"
    order1.each { |row|
      # Croisement horizontal et vertical des données pour avoir la valeur de chaque cellule
      row && row.cells.each { |cell|
        val = cell && cell.value
        @orders << val
      }
    }
    # Récupérer les élements par packages
    @orders.each_slice(4) { |slice|
      @packages << slice
    }
  end
end
