cats = [
         {
                 name: 'Mako',
                 age: 2,
                 enjoys: 'annoying you when youre working',
                 image: 'https://images.unsplash.com/photo-1533738363-b7f9aef128ce?q=80&w=2835&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        
         },
         {
                 name: 'Remii',
                 age: 1,
                 enjoys: 'running around at night',
                 image: 'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
            
        },
        {
                 name: 'Garfield',
                 age: 32,
                 enjoys: 'lasagna',
                 image: 'https://images.unsplash.com/photo-1512616643169-0520ad604fc2?q=80&w=2835&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
            
        }
]



cats.each do |cat|
    Cat.create cat
    puts "create #{cat}"
end