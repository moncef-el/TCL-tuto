# print('hello')
# print(type('hello'))
# if type("hello") is str:
#     print("hello is a string")

# name = input("what's your name: ")
# print(f"Hello {name}")

times = input("time steps : ")

def time_steps(times):
    times = times.split(":")
    new_times = []
    new_string = ""
    loads = []
    for i in range(len(times)):
        loading = []
        times[i] = times[i].split(",")
        if len(times[i]) > 2:
            print("error")
        elif len(times[i]) == 1:
            new_times.append(int(times[i][0]))
            loading.append(int(times[i][0]))
            new_string += times[i][0] + ","
        else:
            incr = int(abs(float(times[i][1])-float(times[i][0]))/5)
            time = int(times[i][0])
            while time < float(times[i][1]):
                new_times.append(time)
                loading.append(time)
                new_string += str(time) + ","
                time += incr
            new_times.append(int(times[i][1]))
            loading.append(int(times[i][1]))
            new_string += times[i][1] + ","
        loads.append(loading)
    new_string = new_string.rstrip(",")
    return new_string, new_times, loads

def fatigue_estimation(times):
    new_string, new_times, loads = time_steps(times)
    nb_steps = len(loads)
    result_list = []
    if len(loads[0]) == 1:
        result_list.append([str(loads[0][0]) + "," + str(loads[1][0])])
    else:
        list = []
        for i in range(len(loads[0])):
            list.append(str(loads[0][i]) + "," + str(loads[1][0]))
        result_list.append(list)

    for i in range(1, nb_steps):
        list = []
        for j in range(len(loads[i])):
            list.append(str(loads[i-1][0]) + "," + str(loads[i][j]))
        result_list.append(list)
    return result_list
        
    





new_string, new_times, loads = time_steps(times)
print(new_string)
print(new_times)
print(loads)

print(fatigue_estimation(times))

# s = "0:150,250:300,500"
# s = s.split(":")
# chosen = ""
# for i in range(len(s)):
#     if len(s[i]) == 1:
#         chosen += s[i]
#         continue
#     for j in range(len(s[]))
# #s = s.replace(":", ",")
# print(s)




    # chosen_step = {}
    # for i in range(len(loads)):
    #     if len(loads[i]) == 1:
    #         chosen_step[i] = loads[i][0]
    
    # if chosen_step != {}:
    #     keys = list(chosen_step.keys())
    #     for i in range(len(loads)):
    #         if i in keys:
    #             break