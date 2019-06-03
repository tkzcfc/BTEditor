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
                                            ["arg"] = {
                                                [1] = 200,
                                                [2] = "test",
                                            },
                                        },
                                        [2] = {
                                            ["children"] = {
                                                [1] = {
                                                    ["type"] = "Action",
                                                    ["name"] = "watch movie",
                                                    ["func"] = "watchMovie",
                                                    ["arg"] = {
                                                        [1] = 100,
                                                    },
                                                },
                                            },
                                            ["type"] = "Wait",
                                            ["name"] = "wait 5 seconds",
                                            ["func"] = "",
                                            ["arg"] = {
                                                [1] = 5,
                                            },
                                        },
                                    },
                                    ["type"] = "RandomSelector",
                                    ["name"] = "do something",
                                    ["func"] = "",
                                    ["arg"] = {
                                        [1] = 3,
                                        [2] = 2,
                                    },
                                },
                            },
                            ["type"] = "Filter",
                            ["name"] = "has money?",
                            ["func"] = "hasMoney",
                            ["arg"] = {
                                [1] = "",
                            },
                        },
                        [2] = {
                            ["children"] = {
                                [1] = {
                                    ["children"] = {
                                        [1] = {
                                            ["type"] = "Action",
                                            ["name"] = "go home",
                                            ["func"] = "goHome",
                                            ["arg"] = {
                                                [1] = "",
                                            },
                                        },
                                        [2] = {
                                            ["children"] = {
                                                [1] = {
                                                    ["type"] = "Action",
                                                    ["name"] = "do work",
                                                    ["func"] = "doWork",
                                                    ["arg"] = {
                                                        [1] = "",
                                                    },
                                                },
                                                [2] = {
                                                    ["type"] = "Action",
                                                    ["name"] = "go home",
                                                    ["func"] = "goHome",
                                                    ["arg"] = {
                                                        [1] = "",
                                                    },
                                                },
                                            },
                                            ["type"] = "Sequence",
                                            ["name"] = "Sequence_2",
                                            ["func"] = "",
                                            ["arg"] = {
                                                [1] = "",
                                            },
                                        },
                                    },
                                    ["type"] = "RandomSelector",
                                    ["name"] = "do something",
                                    ["func"] = "",
                                    ["arg"] = {
                                        [1] = 1,
                                        [2] = 1,
                                    },
                                },
                            },
                            ["type"] = "Sequence",
                            ["name"] = "no money...",
                            ["func"] = "",
                            ["arg"] = {
                                [1] = "",
                            },
                        },
                    },
                    ["type"] = "Selector",
                    ["name"] = "Selector_1",
                    ["func"] = "",
                    ["arg"] = {
                        [1] = "",
                    },
                },
            },
            ["type"] = "Start",
            ["name"] = "",
            ["arg"] = {
                [1] = "",
            },
        },
    },
}