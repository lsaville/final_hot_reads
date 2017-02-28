class HotreadsController < ApplicationController
  def index
    @hot_reads = Read.hot_reads
  end
end
