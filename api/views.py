from rest_framework.response import Response
from rest_framework.decorators import api_view

@api_view(['GET'])
def hello_world(reuest):
    return Response({"message": "Hello World!"})
