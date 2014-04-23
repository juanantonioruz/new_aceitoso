class ResumenController < ApplicationController
  layout 'resumen'
  before_filter :pide_login
  def museo
            @museo=Museo.find(params[:id])

  end
  def articulos
       if    session[:usuario_id]==1 then  
        @resultados=Generica.paginate(:page => params[:page], :per_page => 20).all(:order=>'titulo ASC')
        
        end
  end


end
