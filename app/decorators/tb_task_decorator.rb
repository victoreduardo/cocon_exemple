# frozen_string_literal: true

class TbTaskDecorator < ApplicationDecorator
  delegate_all

  # Decora o nome do responsável da atividade
  #
  # @return[Html]
  def line_responsavel
    h.content_tag :span do
      h.content_tag(:label, 'Responsável: ') +
      h.content_tag(:strong, self.responsavel)
    end
  end
end
