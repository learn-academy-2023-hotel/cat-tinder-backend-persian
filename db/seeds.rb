cats = [
         {
                 name: 'Mako',
                 age: 2,
                 enjoys: 'Hiii my name is Mako, i enjoy laying under the sun while nibbling on some catnip. Im looking for a friend to paw-lax with.',
                 image: 'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
        
         },
         {
                 name: 'Remii',
                 age: 1,
                 enjoys: 'My name is Remii, i enjoy running around at night and getting pamperred. i live a healthy life style, looking for someone to match my energy. P.S my bestfriend is a bird ',
                 image: 'https://images.unsplash.com/photo-1506755855567-92ff770e8d00?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
            
        },
        {
                 name: 'Garfield',
                 age: 5,
                 enjoys: 'I sleep all night and day.. honestly dont know why im here. Netfli and Chill? #foodie',
                 image: 'https://images.unsplash.com/photo-1583084602580-ff7d568021cd?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
            
        },
]



cats.each do |cat|
    Cat.create cat
    puts "create #{cat}"
end