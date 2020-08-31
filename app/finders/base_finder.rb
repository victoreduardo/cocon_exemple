# frozen_string_literal: true

# Classe base para os Finders
class BaseFinder
  attr_accessor :options

  # inicializa o objeto
  def initialize(options = {})
    @options = options
  end

  def tb_task(q = TbTask)
    q.hoje
  end

  private

  def default_per_page
    @options[:per_page] || TOTAL_REGISTROS
  end
end
