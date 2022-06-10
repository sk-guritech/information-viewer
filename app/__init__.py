from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base

DbEngine = create_engine(
    "mysql://application_db:docker@db:3306/application_db",
    encoding="utf-8",
    echo=False
)

ModelBase = declarative_base()