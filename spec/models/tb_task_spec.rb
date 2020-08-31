require 'rails_helper'

describe TbTask do
  it "é válido quando contém atributos requeridos" do
    task = TbTask.new attributes_for(:tb_task)
    expect(task).to be_valid
  end

  describe "validations" do
    subject {
      described_class.new attributes_for(:tb_task)
    }

    it "it's not valid..." do
      subject.titulo = nil
      expect(subject).to_not be_valid
      subject.responsavel = nil
      expect(subject).to_not be_valid
      subject.data = nil
      expect(subject).to_not be_valid
    end
  end
end
