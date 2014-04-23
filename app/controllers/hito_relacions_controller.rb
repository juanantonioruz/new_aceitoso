class HitoRelacionsController < ApplicationController
   before_filter :pide_login
  include ModuloRelaciones
   def create
     crea "relacion_museo_entorno_hito", "hito"
    end
    
     def destroy
       destruye "relacion_museo_entorno_hito"
     end

end
