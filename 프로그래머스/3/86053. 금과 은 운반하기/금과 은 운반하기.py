def solution(a, b, g, s, w, t):

    start = 0
    end = (a + b) * max(t) * 2 - max(t)

    while start < end:
        cost = (end + start) // 2

        max_gold, max_silver, total = 0, 0, 0
        for gold, silver, weight, time in zip(g, s, w, t):
            # 몇번 들고 올 수 있는지
            q = cost // time
            times = q // 2 + q % 2

            max_gold += times * weight if times * weight < gold else gold
            max_silver += times * weight if times * weight < silver else silver
            total += times * weight if times * weight < gold + silver else gold + silver

        if max_gold >= a and max_silver >= b and total >= a + b:
            end = cost
        else:
            start = cost + 1

    return start
