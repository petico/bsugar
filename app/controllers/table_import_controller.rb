class TableImportController < ApplicationController
    before_action :set_db_connection

    def index
      @bs_systems = @db_connection.bs_systems
    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_db_connection
      @db_connection = DbConnection.find(params[:db_connection_id])
    end
end
