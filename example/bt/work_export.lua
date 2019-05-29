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
                                    ["arg"] = "",
                                },
                            },
                            ["type"] = "Filter",
                            ["name"] = "off work??",
                            ["func"] = "isoffWork",
                            ["arg"] = "4",
                        },
                        [2] = {
                            ["children"] = {
                                [1] = {
                                    ["type"] = "False",
                                    ["name"] = "return false",
                                    ["func"] = "",
                                    ["arg"] = "",
                                },
                            },
                            ["type"] = "Wait",
                            ["name"] = "just sleep",
                            ["func"] = "",
                            ["arg"] = "1",
                        },
                        [3] = {
                            ["type"] = "Action",
                            ["name"] = "Action_1",
                            ["func"] = "working",
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