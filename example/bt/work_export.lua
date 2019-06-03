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
                                    ["type"] = "Action",
                                    ["name"] = "go off work",
                                    ["func"] = "goOffWork",
                                    ["arg"] = {
                                        [1] = "",
                                    },
                                },
                            },
                            ["type"] = "Filter",
                            ["name"] = "off work??",
                            ["func"] = "isoffWork",
                            ["arg"] = {
                                [1] = 4,
                            },
                        },
                        [2] = {
                            ["children"] = {
                                [1] = {
                                    ["type"] = "False",
                                    ["name"] = "return false",
                                    ["func"] = "",
                                    ["arg"] = {
                                        [1] = "",
                                    },
                                },
                            },
                            ["type"] = "Wait",
                            ["name"] = "just sleep",
                            ["func"] = "",
                            ["arg"] = {
                                [1] = 1,
                            },
                        },
                        [3] = {
                            ["type"] = "Action",
                            ["name"] = "Action_1",
                            ["func"] = "working",
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