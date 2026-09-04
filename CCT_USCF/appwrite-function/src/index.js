export default async ({ req, res, log, error }) => {
  try {
    log("CCT API function started");

    return res.json({
      success: true,
      service: "CCT API",
      status: "online"
    });
  } catch (e) {
    error(e);
    return res.json(
      {
        success: false,
        error: "Internal server error"
      },
      500
    );
  }
};
