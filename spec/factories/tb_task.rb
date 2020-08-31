FactoryGirl.define do
  factory :tb_task do
    titulo 'Fazer exercício 1'
    responsavel 'Fulano de Tal'
    data Date.today
  end
end