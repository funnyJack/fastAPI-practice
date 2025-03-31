from sqlalchemy import select
from sqlalchemy.ext.asyncio import AsyncSession
from module_admin.entity.do.emailConfigDo import EmailConfig

class EmailConfigDao:
    @classmethod
    async def list_email_config(cls,db:AsyncSession):
        email_configs = (await db.execute(select(EmailConfig))).scalars().all()
        return email_configs
