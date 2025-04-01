import request from '@/utils/request.js'

export const listEmailConfig = ()=>{
    return request({
        url: '/my_route/email_config/list',
        method: 'get'
    })
}
