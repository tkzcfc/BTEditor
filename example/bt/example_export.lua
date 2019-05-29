return {
    ["title"] = "new Tree",
    ["nodes"] = {
        [1] = {
            ["func"] = "",
            ["children"] = {
                [1] = {
                    ["children"] = {
                        [1] = {
                            ["children"] = {
                                [1] = {
                                    ["children"] = {
                                        [1] = {
                                            ["type"] = "Action",
                                            ["name"] = "do buy car",
                                            ["func"] = "byCar",
                                            ["arg"] = "200",
                                        },
                                        [2] = {
                                            ["children"] = {
                                                [1] = {
                                                    ["type"] = "Action",
                                                    ["name"] = "watch movie",
                                                    ["func"] = "watchMovie",
                                                    ["arg"] = "100",
                                                },
                                            },
                                            ["type"] = "Wait",
                                            ["name"] = "wait 5 seconds",
                                            ["func"] = "",
                                            ["arg"] = "5",
                                        },
                                    },
                                    ["type"] = "RandomSelector",
                                    ["name"] = "do something",
                                    ["func"] = "",
                                    ["arg"] = "",
                                },
                            },
                            ["type"] = "Filter",
                            ["name"] = "has money?",
                            ["func"] = "hasMoney",
                            ["arg"] = "",
                        },
                        [2] = {
                            ["children"] = {
                                [1] = {
                                    ["children"] = {
                                        [1] = {
                                            ["type"] = "Action",
                                            ["name"] = "go home",
                                            ["func"] = "goHome",
                                            ["arg"] = "",
                                        },
                                        [2] = {
                                            ["children"] = {
                                                [1] = {
                                                    ["type"] = "Action",
                                                    ["name"] = "do work",
                                                    ["func"] = "doWork",
                                                    ["arg"] = "",
                                                },
                                                [2] = {
                                                    ["type"] = "Action",
                                                    ["name"] = "go home",
                                                    ["func"] = "goHome",
                                                    ["arg"] = "",
                                                },
                                            },
                                            ["type"] = "Sequence",
                                            ["name"] = "Sequence_2",
                                            ["func"] = "",
                                            ["arg"] = "",
                                        },
                                    },
                                    ["type"] = "RandomSelector",
                                    ["name"] = "do something",
                                    ["func"] = "",
                                    ["arg"] = "",
                                },
                            },
                            ["type"] = "Sequence",
                            ["name"] = "no money...",
                            ["func"] = "",
                            ["arg"] = "",
                        },
                    },
                    ["type"] = "Selector",
                    ["name"] = "Selector_1",
                    ["func"] = "",
                    ["arg"] = "",
                },
            },
            ["type"] = "Start",
            ["name"] = "",
            ["arg"] = "",
        },
    },
}