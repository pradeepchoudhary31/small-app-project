import connexion
import six

from swagger_server.models.inline_response200 import InlineResponse200  # noqa: E501
from swagger_server import util


def get_hello_world():  # noqa: E501
    """Get Hello World

     # noqa: E501


    :rtype: InlineResponse200
    """
    return 'do some magic!'
