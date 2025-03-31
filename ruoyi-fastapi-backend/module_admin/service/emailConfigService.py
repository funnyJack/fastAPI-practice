from sqlalchemy.ext.asyncio import AsyncSession
from module_admin.dao.emailConfigDao import EmailConfigDao

class EmailConfigService:
    @classmethod
    async def list_email_config(cls,db:AsyncSession):
        email_configs = await EmailConfigDao.list_email_config(db)
        return email_configs
