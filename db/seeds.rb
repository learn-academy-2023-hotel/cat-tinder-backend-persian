cats = [
         {
                 name: 'Mako',
                 age: 2,
                 enjoys: 'annoying you when youre working',
                 image: 'https://unsplash.com/photos/russian-blue-cat-wearing-yellow-sunglasses-yMSecCHsIBc'
        
         },
         {
                 name: 'Remii',
                 age: 1,
                 enjoys: 'running around at night',
                 image: 'https://unsplash.com/photos/white-and-brown-long-fur-cat-ZCHj_2lJP00'
            
        },
        {
                 name: 'Garfield',
                 age: 32,
                 enjoys: 'lasagna',
                 image: 'https://unsplash.com/photos/shallow-focus-photography-of-orange-persian-cat-hjsNyctCkCQ'
            
        }
]



cats.each do |cat|
    Cat.create cat
    puts "create #{cat}"
end