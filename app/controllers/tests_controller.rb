class TestsController < ApplicationController
  def index
    output = TestReport.new.to_pdf
    
    respond_to do |format|
      format.pdf do  
        send_data output, :filename => "hello.pdf", :type => "application/pdf"
      end
      format.html do
        send_data output, :filename => "hello.pdf", :type => "application/pdf", :disposition => "inline"
      end
    end
  end
  
  def lagerlog
    output = TestReport.new.lager_log
    
    respond_to do |format|
      format.pdf do  
        send_data output, :filename => "Lagerlog.pdf", :type => "application/pdf"
      end
      format.html do
        send_data output, :filename => "Lagerlog.pdf", :type => "application/pdf", :disposition => "inline"
      end
    end
  end
end
