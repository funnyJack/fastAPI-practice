from fastapi import APIRouter, Depends, Request
from sqlalchemy.ext.asyncio import AsyncSession

from config.get_db import get_db
from module_admin.service.emailConfigService import EmailConfigService
from utils.log_util import logger
from utils.response_util import ResponseUtil

emailConfigController = APIRouter(prefix='/my_route/email_config')

@emailConfigController.get("/list")
async def list_all(
        query_db: AsyncSession = Depends(get_db)
):
    logger.info("获取邮箱信息成功")
    email_configs = await EmailConfigService.list_email_config(query_db)
    return ResponseUtil.success(data=email_configs)
