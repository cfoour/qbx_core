---@type table<string, Job>
return {
    ['unemployed'] = {
        label = 'Civilian',
        defaultDuty = true,
        offDutyPay = true,
        grades = {
            [0] = { name = 'Freelancer', payment = 25 },
            [1] = { name = 'Gov', payment = 25, isboss = true, bankAuth = true },
        },
    },

    -- ['firefighter'] = {
    --     label = 'Los Santos Fire Department',
    --     type = 'lsfd',
    --     defaultDuty = true,
    --     offDutyPay = false,
    --     grades = {
    --         [0] = { name = 'Recruit', payment = 70 },
    --         [1] = { name = 'Operator', payment = 150 },
    --         [2] = { name = 'Company Officer', payment = 220 },
    --         [3] = { name = 'Chief', payment = 400, isboss = true, bankAuth = true },
    --     },
    -- },

    ['police'] = {
        label = 'Police Department',
        type = 'leo',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Cadet', payment = 100 },
            [1] = { name = 'Officer I', payment = 120 },
            [2] = { name = 'Officer II', payment = 130 },
            [3] = { name = 'Officer III', payment = 150 },
            [4] = { name = 'Sr Officer', payment = 170 },
            [5] = { name = 'Sergeant I', payment = 200 },
            [6] = { name = 'Sergeant II', payment = 240 },
            [7] = { name = 'Lieutenant', payment = 170, isboss = true },
            [8] = { name = 'Captain', payment = 200, isboss = true },
            [9] = { name = 'Commander', payment = 230, isboss = true },
            [10] = { name = 'Deputy Chief', payment = 250, isboss = true },
            [11] = { name = 'Ass. Chief', payment = 300, isboss = true },
            [12] = { name = 'Chief of Police', isboss = true, bankAuth = true, payment = 450 },
        },
    },

    ['ambulance'] = {
        label = 'EMS',
        type = 'ems',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 100 },
            [1] = { name = 'Paramedic', payment = 150 },
            [2] = { name = 'Doctor', payment = 200 },
            [3] = { name = 'Surgeon', payment = 300 },
            [4] = { name = 'Chief', isboss = true, bankAuth = true, payment = 350 },
        },
    },

    ['lssd'] = {
        label = 'Sheriff Department',
        type = 'leo',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Cadet', payment = 70 },
            [1] = { name = 'Solo Cadet', payment = 85 },
            [2] = { name = 'Officer', payment = 120 },
            [3] = { name = 'Sr Officer', payment = 150 },
            [4] = { name = 'Corporal', payment = 180 },
            [5] = { name = 'Sergeant', payment = 200 },
            [6] = { name = 'Lieutenant', payment = 250 },
            [7] = { name = 'Captain', payment = 310 },
            [8] = { name = 'Undersheriff', payment = 410, isboss = true },
            [9] = { name = 'Sheriff', isboss = true, bankAuth = true, payment = 500 },
        },
    },

    ['realestate'] = {
        label = 'Real Estate',
        type = 'realestate',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 10 },
            [1] = { name = 'House Sales', payment = 10 },
            [2] = { name = 'Business Sales', payment = 10 },
            [3] = { name = 'Broker', payment = 10 },
            [4] = { name = 'Manager', payment = 10, isboss = true, bankAuth = true },
        },
    },

    ['taxi'] = {
        label = 'Taxi',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 20 },
            -- [1] = { name = 'Driver', payment = 20 },
            -- [2] = { name = 'Event Driver', payment = 25 },
            -- [3] = { name = 'Sales', payment = 30 },
            [1] = { name = 'Manager', isboss = true, bankAuth = true, payment = 20 },
        },
    },

    ['admin'] = {
        label = 'Staff Member',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = { name = 'staff', payment = 1 },
        },
    },

    ['mechanic'] = {
        label = 'Mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Novice', payment = 25 },
            [1] = { name = 'Employee', payment = 25 },
            [2] = { name = 'Experienced', payment = 25 },
            [3] = { name = 'Advanced', payment = 25 },
            [4] = { name = 'Manager', isboss = true, bankAuth = true, payment = 25 },
        },
    },

    ['mtmechanic'] = {
        label = 'Sanders Mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Novice', payment = 25 },
            [1] = { name = 'Employee', payment = 25 },
            [2] = { name = 'Experienced', payment = 25 },
            [3] = { name = 'Advanced', payment = 25 },
            [4] = { name = 'Manager', isboss = true, bankAuth = true, payment = 25 },
        },
    },

    ['pdm'] = {
        label = 'Luxury Dealership',
        type = 'cardealer',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Employee', payment = 30 },
            [1] = { name = 'Sells Manager', payment = 30 },
            [2] = { name = 'Owner', isboss = true, bankAuth = true, payment = 50 },
        },
    },

    ['snpdm'] = {
        label = 'Sander MotorCycle',
        type = 'cardealer',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Employee', payment = 30 },
            [1] = { name = 'Sells Manager', payment = 30 },
            [2] = { name = 'Owner', isboss = true, bankAuth = true, payment = 50 },
        },
    },

    ['bnpdm'] = {
        label = 'Benefactor Dealership',
        type = 'cardealer',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Employee', payment = 35 },
            [1] = { name = 'Experienced', payment = 35 },
            [2] = { name = 'Sells Manager', isboss = true, bankAuth = true, payment = 35 },
        },
    },

    ['farmer'] = {
        label = 'Farmer',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Farmer', payment = 45 },
            [1] = { name = 'Farm Manager', isboss = true, bankAuth = true, payment = 45 },
        },
    },

    ----------------------------------------------------------------
    ------------------------ MT Restaurants ------------------------
    ----------------------------------------------------------------
    ['beanmachine'] = {
        label = 'Beanmachine',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['lsbeanmachine'] = {
        label = 'Legion Square Beanmachine',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['coolbeans'] = {
        label = 'Coolbeans',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },

    ['galaxy'] = {
        label = 'Galaxy',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 10 },
            [1] = { name = 'Bar Man', payment = 10 },
            [2] = { name = 'Security Agent', payment = 10 },
            [3] = { name = 'Manager', payment = 110 },
            [4] = { name = 'Owner', bankAuth = true, isboss = true, payment = 10 },
        },
    },

    ['mpburgershot'] = {
        label = 'Mirror Park Burgershot',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['ssburgershot'] = {
        label = 'Sandy Shores Burgershot',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['vpburgershot'] = {
        label = 'Vespucci Burgershot',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 20 },
            [1] = { name = 'Novice', payment = 20 },
            [2] = { name = 'Experienced', payment = 20, isboss = true },
            [3] = { name = 'Advanced', payment = 20 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 20 },
        },
    },
    ['lustresort'] = {
        label = 'The Lust Resort',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['cafeday'] = {
        label = 'Cafe Day',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['bwsaloon'] = {
        label = 'Black Wood Saloon',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['rfclucking'] = {
        label = 'Rockford Clucking Bell',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['vwupnatom'] = {
        label = 'Vinewood Up-N-Atom',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['gsupnatom'] = {
        label = 'Grapeseed Up-N-Atom',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['icentralbar'] = {
        label = 'Italian Central Bar',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['rexdiner'] = {
        label = 'Rex Diner',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['comedyclub'] = {
        label = 'Comedy Club',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['malibuclub'] = {
        label = 'Malibu Club',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['coffeeshop'] = {
        label = 'Coffee Shop',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['wigman'] = {
        label = 'Wigman Burger',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
    ['cafe'] = {
        label = 'Café',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = { name = 'Recruit', payment = 50 },
            [1] = { name = 'Novice', payment = 75 },
            [2] = { name = 'Experienced', payment = 100 },
            [3] = { name = 'Advanced', payment = 125 },
            [4] = { name = 'Manager', bankAuth = true, isboss = true, payment = 150 },
        },
    },
}
