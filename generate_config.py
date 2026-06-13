import json
import os

def generate_json_config():
    # 模拟从数据库/环境变量获取动态配置
    config_data = {
        "appName": "MyAwesomeApp",
        "version": "2.0.0",
        "apiEndpoint": os.getenv("API_ENDPOINT", "https://production.internal"),
        "features": {
            "enableBeta": True,
            "theme": "dark"
        },
        "lastUpdated": "2026-06-13T18:00:00Z"
    }
    
    # 确保输出目录存在并写入文件
    os.makedirs("./configs", exist_ok=True)
    with open("./configs/app-config.json", "w", encoding="utf-8") as f:
        json.dump(config_data, f, indent=4, ensure_ascii=False)
    print("✅ Successfully generated app-config.json")

if __name__ == "__main__":
    generate_json_config()
