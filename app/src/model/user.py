from sqlalchemy import Column, DateTime, Integer, String
from app import ModelBase
from datetime import datetime


class User(ModelBase):
    __tablename__ = "user"

    id = Column(Integer, primary_key=True)
    name = Column(String(128), nullable=False)
    created_at = Column(DateTime, default=datetime.now(), nullable=False)
    updated_at = Column(DateTime, default=datetime.now(), nullable=False)
