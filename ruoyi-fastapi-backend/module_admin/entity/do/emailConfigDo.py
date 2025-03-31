from config.database import Base
from sqlalchemy import Column, String

class EmailConfig(Base):
    """
    email_config 表
    """
    __tablename__ = 'email_config'

    key = Column(String(255), primary_key=True, comment='配置键')
    email = Column(String(255), nullable=False, default="", comment='邮箱')
    company = Column(String(255), nullable=False, default="", comment='公司名称')
    auth_code = Column(String(255), nullable=False, default="", comment='授权码')