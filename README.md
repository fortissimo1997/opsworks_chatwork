Opsworks Chatwork
==================
Cookbook to notify Chatwork of deployment simply


Requirements
------------
- Opsworks(AWS)
- `curl`
- Account for [Chatwork](http://www.chatwork.com/)
- API Token for Chatwork

Examples
----------
#### chatwork::deploy
| Key | Type | Description | Default |
| --- | ---- | ----------- | ------- |
| `['your_application']['chatwork_token']` | String | Your Chatwork Token | nil |
| `['your_application']['chatwork_room_id']` | String | Room ID you want to notify | nil |
| `['your_application']['notifying_nodes']` | Array | Instance Name you want to notify from | nil |


Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

Authors
-------------------
- Author: fortissimo1997
