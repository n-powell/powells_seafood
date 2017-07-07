FactoryGirl.define do
  factory(:product) do
    title('Lobster')
    image('crab.jpg')
    description('Fresh Maine Lobster')
    price("2.50")
  end
end
