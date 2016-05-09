module DeliveryMode
  def self.all
    [
      { 
        id: 1,
        short_name: 'дверь-дверь (Д-Д)',
        description: 'Курьер забирает груз у отправителя и доставляет получателю на указанный адрес.'
      },
      { 
        id: 2,
        short_name: 'дверь-склад (Д-С)',
        description: 'Курьер забирает груз у отправителя и довозит до склада, получатель забирает груз самостоятельно в ПВЗ (самозабор)'
      },
      { 
        id: 3,
        short_name: 'склад-дверь (С-Д)',
        description: 'Отправитель доставляет груз самостоятельно до склада, курьер доставляет получателю на указанный адрес.'
      },
      { 
        id: 4,
        short_name: 'склад-склад (С-С)',
        description: 'Отправитель доставляет груз самостоятельно до склада, получатель забирает груз самостоятельно в ПВЗ (самозабор).'
      }
    ]
  end
end