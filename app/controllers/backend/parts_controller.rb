class Backend::PartsController < BackendController
  def index
    @part = Part.all
  end

  def show
    @part = Part.find(params[:id])
  end

  def edit
    @part = Part.find(params[:id])
  end

  def destroy
    @part = Part.find(params[:id])
    if @part.destroy
      redirect_to backend_parts_path ,notice: "Part supprime"
    
        end
  end

  def new
    @part = Part.new
  end
  def create
    @part = Part.new(parts_params)
     if @part.save
        redirect_to  backend_parts_path ,notice: "Part Ajouter"
        else
      redirect_to new_backend_part
        end 
  end
  def update
      @part = Part.find(params[:id])
      if @part.update(parts_params)
      redirect_to backend_parts_path ,notice: "Part mise a jour"
      end 
     end  
          
  def parts_params
      params.require(:part).permit(:name)
    end
end
