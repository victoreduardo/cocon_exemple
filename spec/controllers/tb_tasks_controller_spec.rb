require 'rails_helper'

RSpec.describe TbTasksController, type: :controller do
  it 'index responds successfully' do
    get :index
    expect(response).to be_success
  end

  it 'index returns 200 response' do
    get :index
    expect(response).to have_http_status(200)
  end

  describe 'HTTP' do
    it 'post' do
      tb_task_params = attributes_for(:tb_task)

      expect {
        post :create, params: { tb_task: tb_task_params }, format: :js
      }.to change(TbTask, :count).by(1)
    end
  end

  describe 'Atualizar' do
    before do
      create(:tb_task)
    end

    it 'atualizar ativas' do
      tb_task = TbTask.first
      get :atualizar, params: { lista_ativas: ["#{tb_task.id}"].to_s,
                                lista_inativas: [].to_s }

      expect(response).to have_http_status(200)
    end

    it 'atualizar inativas' do
      tb_task = TbTask.first
      get :atualizar, params: { lista_ativas: [].to_s,
                                lista_inativas: ["#{tb_task.id}"].to_s }

      expect(response).to have_http_status(200)
    end
  end
end
