import psycopg2
from auth import config


def take_evth_from_table(table: str):
    params = config()
    with psycopg2.connect(**params) as conn:
        with conn.cursor() as cur:
            _SQL = f'SELECT * FROM {table}' 
            cur.execute(_SQL)

            rows = cur.fetchall()
            return rows


if __name__ == '__main__':
    take_evth_from_table('clients')