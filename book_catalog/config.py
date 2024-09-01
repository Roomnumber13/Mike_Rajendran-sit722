import os

class Settings:
    DATABASE_URL: str = os.getenv("postgresql://sit722_part2_zdo7_user:xyOUKEjlrs0JAYdf9BqZDrAIg1ggmPZI@dpg-cr7h22i3esus7389oj50-a.singapore-postgres.render.com/sit722_part2_zdo7")

settings = Settings()
