# Rust语言“Ownership”和其他语言的“GC”的创新思考

其他编程语言“GC”垃圾回收机制，对性能的消耗是由其机制决定的。其弊端性能各方面是由其机制决定的，这个在编写程序的时候再优化，只要不动语言的这个机制，永远不可能解决其性能瓶颈问题。

而Rust语言的设计如果延续之前语言的“GC”机制，那么他在性能方面不可能脱因而出，只是复制其他语言思想而已，没有质的提升，将不足道。有了“Ownership”之后，其在设计上放弃了“GC”的构想实现。

其规则是：
> - Each value in Rust has an owner.
> - There can only be one owner at a time.
> - When the owner goes out of scope, the value will be dropped.
>

如果Rust语言的设计还在“GC”之中打转转，将不可能从根本上设计出“Ownership”的机制。但是不能否定“GC”为“Ownership”的出现提供的思考，还是因果，没有“GC”的不足，不足以促进和发展出“Ownership”。但思维根本不能定为“一”否则不能拥有如此创新，没有前因亦不能出现如此创新。

思维活跃且开放，不被一二三四束缚约束的重要性，在科技发展和社会等等发展中可见一斑。

科技，社会，政治，经济等等这些概念皆束缚，不可自缚自绑。眼耳鼻舌身意，皆束缚，不可自缚自绑。

