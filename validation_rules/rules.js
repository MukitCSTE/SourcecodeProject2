module.exports = {
    mapusers: {
        create: {
            user_name: {
                required: true,
                message: 'Name cannot be empty'
            },
            
            user_email: {
                required: true,
                type: 'email',
                message: 'Invalid email'
            },
            
            password: {
                required: true,
                min: 4,
                message: 'Password length must be grater than three'
            }
        },
        update: {
         
            user_name: {
                required: true,
                message: 'Name cannot be empty'
            },
            
            user_email: {
                required: true,
                type: 'email',
                message: 'Invalid email'
            },
            
            status: {
                required: true,
                min: 1,
                message: 'Invalid status'
            }
        },
        
        changePassword: {
            password: {
                required: true,
                min: 4,
                message: 'Invalid new password. More than three character is needed'
            }
        }
    },





    role: {
        create: {
            role_name: {
                required: true,
                min: 2,
                message: 'role name length must be grater than two'
            }
        },
        update: {
            name: {
                required: true,
                message: 'Name cannot be empty'
            },
            email: {
                required: true,
                type: 'email',
                message: 'Invalid email'
            },
            phone: {
                required: true,
                len: 11,
                message: 'Invalid Phone'
            },
            address: {
                required: true,
                message: 'Invalid Address'
            },
            gender: {
                required: true,
                message: 'Must select a gender'
            }
        }
    },







    users: {
        create: {
            name: {
                required: true,
                message: 'Name cannot be empty'
            },
            role: {
                required: true,
                min: 2,
                message: 'Invalid User Role'
            },
            email: {
                required: true,
                type: 'email',
                message: 'Invalid email'
            },
            
            password: {
                required: true,
                min: 4,
                message: 'Password length minimum 4'
            }
        },
        update: {
            name: {
                required: true,
                message: 'Name cannot be empty'
            },
            email: {
                required: true,
                type: 'email',
                message: 'Invalid email'
            },
            phone: {
                required: true,
                len: 11,
                message: 'Invalid Phone'
            },
            address: {
                required: true,
                message: 'Invalid Address'
            },
            gender: {
                required: true,
                message: 'Must select a gender'
            }
        },
        login: {
            email: {
                required: true,
                type: 'email',
                message: 'Invalid email'
            },
            password: {
                required: true,
                message: 'Password cannot be empty'
            }
        },
        changePassword: {
            oldPassword: {
                required: true,
                min: 4,
                message: 'Invalid old password'
            },
            newPassword: {
                required: true,
                min: 4,
                message: 'Invalid new password'
            },
            confirmPassword: {
                required: true,
                min: 4,
                message: 'Invalid confirm password'
            }
        }
    },





    
    contract: {
        create: {
            map: {
                required: true,
                message: 'Name cannot be empty'
            },
            role: {
                required: true,
               
                message: 'Invalid User Role'
            },
            skill: {
                required: true,
               
                message: 'Invalid skill'
            },
            
            cluster: {
                required: true,
             
                message: 'Invalid cluster'
            },
            price: {
                required: true,
                min: 1,
                message: 'Invalid Price '
            }
        }
     
      
        
    }


 
};
