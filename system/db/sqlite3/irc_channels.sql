--
-- Tabella dei canali di chat
--
CREATE TABLE IF NOT EXISTS irc_channels (
  id INTEGER NOT NULL PRIMARY KEY,
  sol_id INTEGER NOT NULL REFERENCES sols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  pol_id INTEGER NOT NULL REFERENCES pols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  source_id INTEGER NOT NULL REFERENCES sources(id) ON DELETE CASCADE ON UPDATE CASCADE,
  capture_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  decoding_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  viewed_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  irc_id INTEGER NOT NULL REFERENCES ircs(id) ON DELETE CASCADE ON UPDATE CASCADE,
  first_visualization_user_id INTEGER DEFAULT 0,
  flow_info VARCHAR( 255 ) NOT NULL,
  channel VARCHAR( 255 ),
  end_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  channel_path VARCHAR( 255 ),
  cusers VARCHAR( 255 ),
  cnick VARCHAR( 255 )
);
