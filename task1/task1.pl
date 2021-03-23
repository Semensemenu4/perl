use strict;

sub bubbleSort( @ ) {
    my @arr = @_;

    for my $i ( @arr ) {
        for ( my $r = 0; $r < @arr - 1; $r++ ) {
            @arr[$r, $r+1] = @arr[$r+1, $r] if $arr[$r] > $arr[$r+1];
        };
    };

    return @arr;
};

sub binSearch($@) {
    my ($search, @arr) = @_;
    # 0 - текущий индекс, 1 - макс., 2 - мин.
    my @index = (undef, $#arr, 0);
    
    while (@index[-1] <= $index[1]) {
        # делим список пополам
        @index[0] = int((@index[2] + @index[1]) / 2);

        # если нужный нам элемент в середине списка возвращаем "MATCH"
        return "MATCH" if (@arr[$index[0]] == $search);
        
        # если нужный элемент меньше индекса, то макс. = середина списка - 1, если больше, то мин. = середина списка + 1
        $search < @arr[$index[0]] ? $index[1] = $index[0] - 1 : $index[2] = $index[0] + 1;
    }
    return "NOT_MATCH";
};
