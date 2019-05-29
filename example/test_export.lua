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
                                            ["children"] = {
                                                [1] = {
                                                    ["children"] = {
                                                        [1] = {
                                                            ["type"] = "Action",
                                                            ["name"] = "Condition_4",
                                                            ["func"] = "ai_canAttack",
                                                            ["arg"] = "",
                                                        },
                                                        [2] = {
                                                            ["type"] = "Action",
                                                            ["name"] = "Condition_5",
                                                            ["func"] = "ai_attackRangeTest",
                                                            ["arg"] = "",
                                                        },
                                                        [3] = {
                                                            ["children"] = {
                                                                [1] = {
                                                                    ["type"] = "Action",
                                                                    ["name"] = "Action_5",
                                                                    ["func"] = "ai_Skill",
                                                                    ["arg"] = "",
                                                                },
                                                            },
                                                            ["type"] = "RandomSelector",
                                                            ["name"] = "doSkill",
                                                            ["func"] = "",
                                                            ["arg"] = "",
                                                        },
                                                    },
                                                    ["type"] = "Sequence",
                                                    ["name"] = "attack",
                                                    ["func"] = "",
                                                    ["arg"] = "",
                                                },
                                                [2] = {
                                                    ["children"] = {
                                                        [1] = {
                                                            ["type"] = "True",
                                                            ["name"] = "True_1",
                                                            ["func"] = "",
                                                            ["arg"] = "",
                                                        },
                                                    },
                                                    ["type"] = "Wait",
                                                    ["name"] = "Wait_2",
                                                    ["func"] = "",
                                                    ["arg"] = "5",
                                                },
                                            },
                                            ["type"] = "RandomSelector",
                                            ["name"] = "have target",
                                            ["func"] = "",
                                            ["arg"] = "",
                                        },
                                    },
                                    ["type"] = "Filter",
                                    ["name"] = "have target ????",
                                    ["func"] = "ai_hasTarget",
                                    ["arg"] = "66666",
                                },
                                [2] = {
                                    ["children"] = {
                                        [1] = {
                                            ["type"] = "Action",
                                            ["name"] = "do find target",
                                            ["func"] = "ai_findTarget",
                                            ["arg"] = "",
                                        },
                                        [2] = {
                                            ["children"] = {
                                                [1] = {
                                                    ["type"] = "Action",
                                                    ["name"] = "Action_1",
                                                    ["func"] = "ai_forward",
                                                    ["arg"] = "",
                                                },
                                                [2] = {
                                                    ["type"] = "Action",
                                                    ["name"] = "Action_2",
                                                    ["func"] = "ai_backAway",
                                                    ["arg"] = "",
                                                },
                                                [3] = {
                                                    ["type"] = "True",
                                                    ["name"] = "True_2",
                                                    ["func"] = "",
                                                    ["arg"] = "",
                                                },
                                            },
                                            ["type"] = "RandomSelector",
                                            ["name"] = "find target fail",
                                            ["func"] = "",
                                            ["arg"] = "",
                                        },
                                    },
                                    ["type"] = "Selector",
                                    ["name"] = "no target",
                                    ["func"] = "",
                                    ["arg"] = "",
                                },
                            },
                            ["type"] = "Selector",
                            ["name"] = "Selector_1",
                            ["func"] = "",
                            ["arg"] = "",
                        },
                        [2] = {
                            ["children"] = {
                                [1] = {
                                    ["type"] = "Action",
                                    ["name"] = "Action_7",
                                    ["func"] = "ai_Wait",
                                    ["arg"] = "",
                                },
                            },
                            ["type"] = "Wait",
                            ["name"] = "Wait_1",
                            ["func"] = "",
                            ["arg"] = "2",
                        },
                    },
                    ["type"] = "RandomSelector",
                    ["name"] = "RandomSelector_1",
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